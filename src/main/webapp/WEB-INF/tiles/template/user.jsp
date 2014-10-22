<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

		<tiles:insertAttribute name="header"></tiles:insertAttribute>
		

        <section class="portfolio-1 bg-lighter">
            <div class="container">
                <div class="row">
                    <tiles:insertAttribute name="content"></tiles:insertAttribute>
                </div>
            </div>
        </section>

		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
