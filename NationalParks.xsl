<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>National Parks Directory</title>
        <style>
          body { font-family: Arial, sans-serif; }
          h1 { color: darkgreen; }
          table { border-collapse: collapse; width: 100%; }
          th, td { border: 1px solid black; padding: 8px; text-align: left; }
          th { background-color: #dff0d8; }
        </style>
      </head>
      <body>
        <h1>National Parks Directory</h1>
        <table>
          <tr>
            <th>Name</th>
            <th>Phone</th>
            <th>Nearest Airport</th>
            <th>Rating</th>
            <th>Address</th>
          </tr>
          <xsl:for-each select="NationalParks/NationalPark">
            <tr>
              <td><xsl:value-of select="Name"/></td>
              <td><xsl:value-of select="Phone[1]"/></td>
              <td><xsl:value-of select="@NearestAirport"/></td>
              <td><xsl:value-of select="@Rating"/></td>
              <td>
                <xsl:value-of select="Address/Number"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="Address/Street"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="Address/City"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="Address/State"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="Address/Zip"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>