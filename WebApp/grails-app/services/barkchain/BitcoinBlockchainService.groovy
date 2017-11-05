package barkchain

import com.google.common.util.concurrent.FutureCallback
import com.google.common.util.concurrent.Futures
import org.bitcoinj.core.Address
import org.bitcoinj.core.Coin
import org.bitcoinj.core.ECKey
import org.bitcoinj.core.InsufficientMoneyException
import org.bitcoinj.core.NetworkParameters
import org.bitcoinj.core.Transaction
import org.bitcoinj.core.TransactionConfidence
import org.bitcoinj.kits.WalletAppKit
import org.bitcoinj.params.TestNet3Params
import org.bitcoinj.script.ScriptBuilder
import org.bitcoinj.wallet.SendRequest
import org.bitcoinj.wallet.Wallet
import org.bitcoinj.wallet.listeners.WalletCoinsReceivedEventListener
import com.google.common.util.concurrent.AbstractIdleService

class BitcoinBlockchainService {

    def sendTransaction(hash) throws InsufficientMoneyException, Wallet.DustySendRequested{
        def receipt=['transactionId':null, 'blockChainDate':null]
        NetworkParameters params = TestNet3Params.get()
        WalletAppKit kit = new WalletAppKit(params, new File("."), "BarkChainWallet"){
            @Override
            protected void onSetupCompleted() {
                // This is called in a background thread after startAndWait is called, as setting up various objects
                // can do disk and network IO that may cause UI jank/stuttering in wallet apps if it were to be done
                // on the main thread.
                if (wallet().getKeyChainGroupSize() < 1)
                    wallet().importKey(new ECKey())
                println(wallet())
            }
        }

        //Start syncing the wallet with the peers in the bitcoin network
        kit.startAsync()
        kit.awaitRunning()
        //Print all the info
        println("Current ReceiveAddress: "+kit.wallet().currentReceiveAddress())
        println("Current Receive Key: "+kit.wallet().currentReceiveKey())
        println("Current Change Address: "+kit.wallet().currentChangeAddress())
        println("Current Available Balance: "+kit.wallet().getBalance(Wallet.BalanceType.AVAILABLE))
        println("Current Estimated Balance: "+kit.wallet().getBalance(Wallet.BalanceType.ESTIMATED))
        println("Current Generic Balance: "+kit.wallet().getBalance())
        ///////////////
        println("ALL TRANSACTIONS: ")
        println(kit.wallet().getTransactionsByTime())

        byte[] OpReturnValue = (hash.getBytes())
        println("***********************The Embedded Message is: "+hash+"*****************************")
        Address recipient1 = new Address(params, "msUhcQEpJMA8UCMwjV514aV32BTYjsKqzB")
        Coin txValue = Coin.parseCoin("0.005")

        //create transaction
        Transaction trans = new Transaction(params)
        Wallet.SendResult result
        try {
            trans.addOutput(txValue,recipient1)
            trans.addOutput(Coin.ZERO, ScriptBuilder.createOpReturnScript(OpReturnValue))
            /////////////Print all the transaction information
            println("Transaction :"+trans)
            // send it to the bitcoin network
            result=kit.wallet().sendCoins(kit.peerGroup(),SendRequest.forTx(trans))
            /////////Print the result of the transaction
            println("Send Result"+result)

            receipt['transactionId']=result.tx.hash
            receipt['blockChainDate']=result.tx.updateTime

        }catch(Wallet.DustySendRequested e)
        {
            println("**********************The transaction violates dust rules of the Bitcoin Blockchain****************************")
        }catch(InsufficientMoneyException e){
            println("**********************You don't have sufficient amount of Bitcoin******************")
        }
        println("Process Finished")
        //
//        if (result.broadcastComplete)
        println("The receipt is: "+receipt)
        return receipt
    }
}
