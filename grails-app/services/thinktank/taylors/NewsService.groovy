package thinktank.taylors

import java.util.Date;

import grails.transaction.Transactional

@Transactional
class NewsService {

    def News createNews(String title, String author, Date postDate) {
		News news = new News()
		news.title = title
		news.content = 'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.'
		news.postDate = postDate
		news.author = author
		news.save()
    }
}
