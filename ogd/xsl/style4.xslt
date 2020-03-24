<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:atom="http://www.w3.org/2005/Atom"
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:flickr="urn:flickr:"
  xmlns:media="http://search.yahoo.com/mrss/"
>
    <xsl:output method="html" indent="yes" encoding="utf-8" />
    <xsl:template match="/">
      <html>
        <head>
          <title><xsl:value-of select="atom:feed/atom:title"/></title>
	  <link rel="stylesheet" href="https://www.geo.admin.ch/etc/clientlibs/cmsms-core-internet.min.5dd268a2a1188e121194f31250129824.css" />
        </head>
        <body>
	  <div class="container container-main">
  		<header><nav class="navbar treecrumb pull-left nav-open" role="navigation"></nav><div class="clearfix"></div>
   			<a href="" class="brand hidden-xs">
  			<img src="https://www.geo.admin.ch/etc/clientlibs/cmsms-core-common/img/logo-CH.svg" onerror="this.onerror=null; this.src='https://www.geo.admin.ch/etc/clientlibs/cmsms-core-common/img/logo-CH.png'"></img>
  			<h1>geo.admin.ch - the federal geoportal</h1>
			</a>
  		</header>
 		<nav class="nav-main yamm navbar" id="main-navigation" role="navigation">
  		<section class="nav-mobile nav-open">
    		<div class="table-row nav-open">
      		<div class="nav-mobile-header">
        		<div class="table-row">
          		<span class="nav-mobile-logo">
            		<img src="https://www.geo.admin.ch/etc/clientlibs/cmsms-core-common/img/swiss.svg" onerror="this.onerror=null; this.src='https://www.geo.admin.ch/etc/clientlibs/cmsms-core-common/img/swiss.png'" alt="Confederatio Helvetica"></img>
          		</span>
          		<h1><a href="#">geo.admin.ch - Linked Data</a></h1>
        	</div>
      		</div>
    		</div>
  		</section>
  		</nav>

		<h1><xsl:value-of select="atom:feed/atom:title"/></h1>
			<h2><xsl:value-of select="atom:feed/atom:subtitle"/></h2>
			<div style="border:1px #ccc solid; padding:0 10px; margin-bottom:20px;">
			<h3>What is this page?</h3>
						<p>This is an RSS feed from the <xsl:value-of select="image/title" /> website. RSS feeds allow you to stay up to date with the latest news and features you want from  <xsl:value-of select="image/title" />.</p>
						<p>To subscribe to it, you will need an RSS Reader. We recommend using the free <a href="http://www.google.com/reader">Google Reader</a>.</p>
			</div>
          <ul class="nobullets">
            <xsl:apply-templates select="//atom:entry"/>
          </ul>

          <footer>
             <div class="container-fluid">
               <h1>&#160;</h1>
              <hr class="footer-line visible-xs"/>


             <address>
              <span class="hidden-xs pull-left">geo.admin.ch - Linked Data</span>
              <nav class="pull-right">
               <ul>
                 <li><a target="_blank" href="//www.geo.admin.ch/de/about-swiss-geoportal/impressum.html#copyright">Rechtliches</a></li>
                 <li><a target="_blank" href="//www.geo.admin.ch/fr/about-swiss-geoportal/impressum.html#copyright">Mentions légales</a></li>
                 <li><a target="_blank" href="//www.geo.admin.ch/en/about-swiss-geoportal/impressum.html#copyright">Terms and Conditions</a></li>
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
    <li>
<a href="{atom:link[@rel='alternate']/@href}">
				<xsl:value-of select="atom:title"/>
			</a>
        <h2><xsl:value-of select="atom:title" disable-output-escaping="yes"/></h2>
        <div><xsl:value-of select="atom:content" disable-output-escaping="yes"/></div>
    </li>
  </xsl:template>
</xsl:stylesheet>
