package thinktank.taylors

import grails.transaction.Transactional

import org.codehaus.groovy.grails.web.context.ServletContextHolder
import org.springframework.web.multipart.MultipartFile

@Transactional
class FileUploadService {

	def String persistFile( MultipartFile file, String name, String destinationDirectory) {

		def serveletContext = ServletContextHolder.servletContext
		def storagePath = serveletContext.getRealPath( destinationDirectory )

		def storagePathDirectory = new File( storagePath )

		if( !storagePathDirectory.exists() ){
			println("creating directory ${storagePath}")
			if(storagePathDirectory.mkdirs()){
				println "SUCCESS"
			}else{
				println "FAILED"
			}
		}

		// Store file

		if(!file.isEmpty()){
			file.transferTo( new File("${storagePath}/${name}") )
			println("Saved File: ${storagePath}/${name}")
			return "${storagePath}/${name}"
		}else{
			println "File: ${file.inspect()} was empty"
			return null
		}
	}
	
	def String deleteImageFromFolder(String entityId, String folder) {
		
		def serveletContext = ServletContextHolder.servletContext
		def storagePath = serveletContext.getRealPath( "assets/${folder}/${entityId}.jpg" )
		
		try {
			new File(storagePath).delete()
		} catch (Exception e){
			println e
		}
		
	}

}
