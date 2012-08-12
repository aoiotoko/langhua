/*
 * This library is part of OFBiz-HTMLReport Component of Langhua
 *
 * Copyright (C) 2010  Langhua Opensource Foundation (http://langhua.org)
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3.0 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * For the latest version about this component, please see the
 * project website: http://langhua.org/opensource/ofbiz/ofbiz-htmlreport/
 * 
 * For more information on Apache OFBiz, please see the
 * project website: http://ofbiz.apache.org/
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

package org.langhua.ofbiz.htmlreport;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * Base report class.<p> 
 * 
 * @author Alexander Kandzior   
 * @author Thomas Weckert  
 * @author Jan Baudisch 
 * @author Peter Bonrad
 * @author Shi Yusen, shiys@langhua.cn
 * 
 */
public abstract class A_OFBizReport implements I_OFBizReport {

    /** Contains all error messages generated by the report. */
    private List<Object> m_errors;

    /** The locale this report is written in. */
    private Locale m_locale;

    /** Runtime of the report. */
    private long m_starttime;

    /** Contains all warning messages generated by the report. */
    private List<Object> m_warnings = new ArrayList<Object>();

    /** Day constant. */
    private static final long DAYS = 1000 * 60 * 60 * 24;

    /** Hour constant. */
    private static final long HOURS = 1000 * 60 * 60;

    /** Minute constant. */
    private static final long MINUTES = 1000 * 60;

    /** Second constant. */
    private static final long SECONDS = 1000;

    public static final String SESSION_REPORT_CLASS = "OFBIZ_HTML_REPORT";

    /**
     * @see cn.langhua.ofbiz.report.I_OFBizReport#addError(java.lang.Object)
     */
    public void addError(Object obj) {

        m_errors.add(obj);
    }

    /**
     * @see cn.langhua.ofbiz.report.I_OFBizReport#addWarning(java.lang.Object)
     */
    public void addWarning(Object obj) {

        m_warnings.add(obj);
    }

    /**
     * @see cn.langhua.ofbiz.report.I_OFBizReport#formatRuntime()
     */
    public String formatRuntime() {

    	long runtime = getRuntime();
        long seconds = (runtime / SECONDS) % 60;
        long minutes = (runtime / MINUTES) % 60;
        long hours = (runtime / HOURS) % 24;
        long days = runtime / DAYS;
        StringBuffer strBuf = new StringBuffer();

        if (days > 0) {
            if (days < 10) {
                strBuf.append('0');
            }
            strBuf.append(days);
            strBuf.append(':');
        }

        if (hours < 10) {
            strBuf.append('0');
        }
        strBuf.append(hours);
        strBuf.append(':');

        if (minutes < 10) {
            strBuf.append('0');
        }
        strBuf.append(minutes);
        strBuf.append(':');

        if (seconds < 10) {
            strBuf.append('0');
        }
        strBuf.append(seconds);

        return strBuf.toString();
    }

    /**
     * @see cn.langhua.ofbiz.report.I_OFBizReport#getErrors()
     */
    public List<Object> getErrors() {

        return m_errors;
    }

    /**
     * @see cn.langhua.ofbiz.report.I_OFBizReport#getLocale()
     */
    public Locale getLocale() {

        return m_locale;
    }

    /**
     * @see cn.langhua.ofbiz.report.I_OFBizReport#getRuntime()
     */
    public long getRuntime() {

        return System.currentTimeMillis() - m_starttime;
    }

    /**
     * @see cn.langhua.ofbiz.report.I_OFBizReport#getWarnings()
     */
    public List<Object> getWarnings() {

        return m_warnings;
    }

    /**
     * @see cn.langhua.ofbiz.report.I_OFBizReport#hasError()
     */
    public boolean hasError() {

        return (m_errors.size() > 0);
    }
    
    /**
     * @see cn.langhua.ofbiz.report.I_OFBizReport#hasWarning()
     */
    public boolean hasWarning() {

        return (m_warnings.size() > 0);
    }

    /**
     * @see cn.langhua.ofbiz.report.I_OFBizReport#resetRuntime()
     */
    public void resetRuntime() {

        m_starttime = System.currentTimeMillis();
    }

    /**
     * Initializes some member variables for this report.<p>
     * 
     * @param locale the locale for this report
     */
    protected void init(Locale locale) {

        m_starttime = System.currentTimeMillis();
        m_locale = locale;
    	m_errors = new ArrayList<Object>();
    }

    /**
     * Prints a String to the report.<p>
     *
     * @param value the String to add
     */
    public void print(String value) {

        print(value, FORMAT_DEFAULT);
    }

    /**
     * Prints a String to the report, using the indicated formatting.<p>
     * 
     * Use the contants starting with <code>FORMAT</code> from this interface
     * to indicate which formatting to use.<p>
     *
     * @param value the message container to add
     * @param format the formatting to use for the output
     */
    public abstract void print(String value, int format);

    /**
     * Prints a String with line break to the report.<p>
     * 
     * @param value the message container to add
     */
    public void println(String value) {

        println(value, FORMAT_DEFAULT);
    }

    /**
     * Prints a String with line break to the report, using the indicated formatting.<p>
     * 
     * Use the contants starting with <code>C_FORMAT</code> from this interface
     * to indicate which formatting to use.<p>
     *
     * @param value the String to add
     * @param format the formatting to use for the output
     */
    public void println(String value, int format) {

        print(value, format);
        println();
    }

}