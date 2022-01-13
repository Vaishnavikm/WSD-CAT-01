<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1 style="text-align:center">Employee Management system</h1>
                <h2>Employee Details</h2>
                <table border="1">
                    <tr>
                        <th style="text-align:left">ID</th>
                        <th style="text-align:left">Name</th>
                        <th style="text-align:left">Age</th>
                        <th style="text-align:left">Salary</th>
                        <th style="text-align:left">Email</th>
                        <th style="text-align:left">Phone_No.</th>
                        <th style="text-align:left">Designation</th>
                    </tr>
            
                    <xsl:for-each select="company/Employee">
                        <xsl:sort select="Emp_ID" />
                        <xsl:if test="Age > 31">
                            <tr>
                                <td>
                                    <xsl:value-of select="Emp_ID" />
                                </td>
                                <td>
                                    <xsl:value-of select="Name" />
                                </td>
                                <td>
                                    <xsl:value-of select="Age" />
                                </td>
                                <td>
                                    <xsl:value-of select="Salary" />
                                </td>
                                <td>
                                    <xsl:value-of select="Email" />
                                </td>
                                <td>
                                    <xsl:value-of select="Phone_No" />
                                </td>
                                <td>
                                    <xsl:value-of select="Designation" />
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>   
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>