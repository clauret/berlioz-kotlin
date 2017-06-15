/*
* (c) Copyright LPCC Pty Ltd (Australia) 2016-2017
*/
package net.tyenki.kt.berlioz

import org.pageseeder.berlioz.content.ContentRequest
import org.pageseeder.berlioz.plus.ValidatedRequest
import org.pageseeder.berlioz.plus.RequestParameter
import org.pageseeder.berlioz.plus.exceptions.InvalidParameterException

/**
 * Defines a content request which has been filtered for this application.
 */
public class SimpleRequest(request: ContentRequest) : ValidatedRequest(request) {

  public fun getPage(parameter: RequestParameter = Param.page, fallback: Int = 1) : Int {
    val p = getLong(parameter, fallback.toLong());
    if (p > 0 && p < Int.MAX_VALUE) return p.toInt();
    throw InvalidParameterException(Param.page);
  }

}