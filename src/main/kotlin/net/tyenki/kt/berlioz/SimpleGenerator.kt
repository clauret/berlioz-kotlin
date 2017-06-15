/*
* (c) Copyright LPCC Pty Ltd (Australia) 2016-2017
*/
package net.tyenki.kt.berlioz

import org.pageseeder.berlioz.content.ContentRequest
import org.pageseeder.berlioz.content.ContentStatus
import org.pageseeder.berlioz.plus.Generator
import org.pageseeder.berlioz.plus.XMLPrinter
import org.pageseeder.berlioz.plus.spi.RequestFactory

/**
 * Base class for all generators in Stratabox.
 */
public abstract class SimpleGenerator : Generator<SimpleRequest>(SimpleGenerator.Factory.INSTANCE) {

  /** Singleton pattern using enum */
  private enum class Factory : RequestFactory<SimpleRequest> {
    INSTANCE;

    override fun getRequest(request: ContentRequest): SimpleRequest {
      return SimpleRequest(request)
    }
  }

  /**
   * Generate the standard Stratabox error xml and return the specific status code.
   *
   * @param xml The XML printer of the output
   * @param code A unique code for the error
   * @param message The message explaining the error
   * @param status The status to return
   *
   * @return The specified status
   */
  fun error(xml: XMLPrinter, code: Int, message: String, status: ContentStatus): ContentStatus {
    xml.openElement("error")
    xml.attribute("message", message)
    xml.closeElement()
    return status
  }

  /**
   * Generate the standard Stratabox error xml and return the specific status code.
   *
   * @param xml The XML printer of the output
   * @param message The message explaining the error
   * @param status The status to return
   *
   * @return The specified status
   */
  fun error(xml: XMLPrinter, message: String, status: ContentStatus): ContentStatus {
    return error(xml, -1, message, status)
  }

}