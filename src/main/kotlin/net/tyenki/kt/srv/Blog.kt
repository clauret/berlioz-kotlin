package net.tyenki.kt.srv

import net.tyenki.kt.berlioz.SimpleGenerator
import org.pageseeder.berlioz.plus.XMLPrinter
import net.tyenki.kt.berlioz.SimpleRequest
import org.pageseeder.berlioz.content.ContentStatus
import net.tyenki.kt.berlioz.Param
import org.pageseeder.xmlwriter.XMLWritable
import org.pageseeder.xmlwriter.XMLWriter

/**
 * Blog object.
 */
data class Blog(val id: Long, val title: String, val tags: Array<String>) : XMLWritable {
  override public fun toXML(xml: XMLWriter) {
    xml.openElement("blog")
    xml.attribute("id", id.toString())
    xml.attribute("title", title)
    xml.attribute("tags", tags.toString())
    xml.closeElement()
  }
}


public class GetBlog : SimpleGenerator() {

  override fun generate(req: SimpleRequest, xml: XMLPrinter): ContentStatus {

    val id = req.getLong(Param.id);

    xml.openElement("blog");
    xml.attribute("id", id);

    xml.closeElement();

    return ContentStatus.OK;
  }

}

public class ListBlogs : SimpleGenerator() {

  override fun generate(req: SimpleRequest, xml: XMLPrinter): ContentStatus {
    val page = req.getPage();

    
    
    return ContentStatus.OK;
  }

}