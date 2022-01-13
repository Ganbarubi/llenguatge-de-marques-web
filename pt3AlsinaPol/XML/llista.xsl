<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<!-- *****************************************************
Nom:Pol 
Cognom:Alsina
*********************************************************** -->
<html>
    <head>
        <title>Lista</title>
        <link rel="stylesheet" href="../css/estil.css"/>
    </head>
    <body>
        <header style="overflow: auto; text-align: center;">
            <a href="../index.html"><img src="../imatges/delicias.png"/></a>
            <hr/>
            <nav class="position">   
                <ul>
                    <li><a href="../index.html">Inicio</a></li>
                    <li><a href="../index.html">Sobre mí</a></li>
                    <li><a href="../recepta/recepta.html">Recetas</a></li>
                    <li><a href="../Contacte/contacte.html">Contacto</a></li>
                    <li><a href="#">Lista de recetas</a></li>
                </ul>
            </nav>
            <hr/>
        </header>
        <h1 style="text-align: center;">Listado de Recetas</h1>
        <xsl:for-each select="receptes/recepta">
        <section>
            <div class="llis"> 
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="imatge/@ruta"/>
                    </xsl:attribute>
                    <xsl:attribute name="height">
                        200px
                    </xsl:attribute>
                    <xsl:attribute name="width">
                        300px
                    </xsl:attribute>
                </xsl:element>
                <h3><a href="../recepta/recepta.html"><xsl:value-of select="titol"/></a></h3>
                <p class="text2">
                    <xsl:value-of select="temps"/><br/>
                    <xsl:value-of select="dificultat"/><br/>
                    <xsl:value-of select="vegano"/><br/>
                    <xsl:value-of select="anticancer"/><br/>
                    <xsl:value-of select="sinGluten"/><br/>
                </p>
            </div>
        </section>
        </xsl:for-each>
        <div style="clear: both;"/>
        <footer style="text-align: center;">
            <nav>
                <ul>
                    <li><a>Facebook</a></li>
                    <li><a>Twitter</a></li>
                    <li><a>Instagram</a></li>
                    <li><a>Pinterest</a></li>
                    <li><a>Email</a></li>
                    <li><a>RSS</a></li>
                </ul>
            </nav>
        </footer>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>