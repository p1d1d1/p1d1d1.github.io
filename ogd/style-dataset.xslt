<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" indent="yes" encoding="utf-8" />
  <xsl:template match="/">
  <!--Header definition-->
  <html>
    <head>
      <title><xsl:value-of select="atom:feed/atom:title"/></title>
	    <link rel="stylesheet" href="css/admin.css" />
    </head>
    <body>
	     <div class="container container-main">
  		     <header>
             <nav class="navbar treecrumb pull-left nav-open" role="navigation"></nav>
             <div class="clearfix"></div>
   			     <a href="" class="brand hidden-xs"><img src="https://www.geo.admin.ch/etc/clientlibs/cmsms-core-common/img/logo-CH.svg" onerror="this.onerror=null; this.src='https://www.geo.admin.ch/etc/clientlibs/cmsms-core-common/img/logo-CH.png'"></img>
  			     <h1>geo.admin.ch - das Geoportal des Bundes</h1><br/><h1>&#160;</h1><br/><h1>geo.admin.ch - le géoportail fédéral</h1></a>
  		    </header>
 		      <nav class="nav-main yamm navbar" id="main-navigation" role="navigation">
  		        <section class="nav-mobile nav-open">
    		          <div class="table-row nav-open">
      		            <div class="nav-mobile-header">
        		              <div class="table-row">
          		                <span class="nav-mobile-logo">
            		                  <img src="https://www.geo.admin.ch/etc/clientlibs/cmsms-core-common/img/swiss.svg" onerror="this.onerror=null; this.src='https://www.geo.admin.ch/etc/clientlibs/cmsms-core-common/img/swiss.png'" alt="Confederatio Helvetica"></img>
          		                </span><h1><a href="#">geo.admin.ch - das Geoportal des Bundes</a></h1><br/><h1><a href="#">geo.admin.ch - le géoportail fédéral</a></h1>
        	                </div>
      		            </div>
    		          </div>
  		        </section>
  		    </nav>

  <!--Main content-->
          <div class="container-fluid">
            <div class="entry">
              <p class="lead"/>
              <h1 class="text-inline"><xsl:value-of select="atom:feed/atom:title"/></h1><br/>
              <p class="lead"/>
			        <p><xsl:copy-of select="atom:feed/atom:subtitle"/></p>
              <p class="date"><xsl:value-of select="substring-before(atom:feed/atom:updated,'T')"/></p>
            </div>
         </div>
 <hr/>
      <xsl:apply-templates select="//atom:entry"/>

  <!--Footer-->
          <footer>
            <div class="container-fluid">
              <h1>&#160;</h1>
              <hr class="footer-line visible-xs"/>
              <address>
                <span class="hidden-xs pull-left">geo.admin.ch</span>
                <nav class="pull-right">
                  <ul>
                    <li><a target="_blank" href="//www.geo.admin.ch/de/about-swiss-geoportal/impressum.html#copyright">Rechtliches</a></li>
                    <li><a target="_blank" href="//www.geo.admin.ch/fr/about-swiss-geoportal/impressum.html#copyright">Mentions légales</a></li>
                    <!--<li><a target="_blank" href="//www.geo.admin.ch/en/about-swiss-geoportal/impressum.html#copyright">Terms and Conditions</a></li>-->
                    <li>|</li>
                    <li><a target="_blank" href="//www.admin.ch/gov/en/start/terms-and-conditions.html">Disclaimer</a></li>
                  </ul>
                </nav>
              </address>
            </div>
          </footer>
		    </div>
    </body>
  </html>
  </xsl:template>
  <xsl:template match="atom:entry">
   <div class="container-fluid">
    <div class="entry">
      <details>
        <summary><li><xsl:value-of select="atom:content"/></li></summary>
        <p class="lead"/>
        <xsl:for-each select="atom:link">
          <p><a class="icon icon--after icon--external" href="{@href}"><xsl:value-of select="@title"/></a></p>
        </xsl:for-each>
      </details>
    </div>
   </div>
  </xsl:template>
</xsl:stylesheet>
