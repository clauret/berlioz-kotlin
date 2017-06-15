/*
* (c) Copyright LPCC Pty Ltd (Australia) 2016-2017
*/
package net.tyenki.kt.berlioz

import org.eclipse.jdt.annotation.NonNull
import org.pageseeder.berlioz.plus.RequestParameter

/**
 * List of request parameters used in the Website.
 */
public enum class Param : RequestParameter {

  /**
   * The page number in a list
   */
  page,

  /**
   * The number of results per page
   */
  pagesize,

  /**
   * Boolean for enabling voting on meetings.
   */
  id;

  override fun getName(): String {
    return name;
  }

}