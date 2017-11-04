package barkchain

import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile

import java.security.MessageDigest

@Transactional
class HashFileService {

    def getHash(File file = null, MultipartFile multipartFFile = null) {
        MessageDigest digest = MessageDigest.getInstance("SHA-256")
        def inputStream = null
        if (file != null) {
            inputStream = file.newDataInputStream()
        }
        if (multipartFFile != null) {
            inputStream = multipartFFile.getInputStream()
        }
        byte[] buffer = new byte[8192]
        int read = 0
        while ((read = inputStream.read(buffer)) > 0) {
            digest.update(buffer, 0, read);
        }

        byte[] md5sum = digest.digest()
        BigInteger bigInt = new BigInteger(1, md5sum)
        def hash = bigInt.toString(16).padLeft(32, '0')

        return hash
    }
}
