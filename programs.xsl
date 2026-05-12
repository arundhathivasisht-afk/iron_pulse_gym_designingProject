<?xml version="1.0" encoding="UTF-8"?>
<!-- XSL stylesheet that turns programs.xml into a styled HTML page -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <!-- main template — builds the full page -->
  <xsl:template match="/">
    <html lang="en">
    <head>
      <meta charset="UTF-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <title>Iron Pulse Gym — Programs</title>

      <!-- inline styles to match the main site look -->
      <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;900&amp;family=Outfit:wght@400;600;700;900&amp;display=swap');

        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
          font-family: 'Inter', sans-serif;
          background-color: #08090d;
          color: #f1f1f1;
          min-height: 100vh;
          display: flex;
          flex-direction: column;
          align-items: center;
          padding: 3rem 2rem;
        }

        h1 {
          font-family: 'Outfit', sans-serif;
          font-size: 2.4rem;
          font-weight: 900;
          text-transform: uppercase;
          letter-spacing: 3px;
          margin-bottom: 0.5rem;
          color: #f1f1f1;
        }

        h1 span { color: #e63946; }

        .subtitle {
          color: #9ca3af;
          margin-bottom: 2.5rem;
          font-size: 1rem;
        }

        /* table styled to match the main site */
        table {
          width: 100%;
          max-width: 900px;
          border-collapse: collapse;
          background: #161820;
          border-radius: 12px;
          overflow: hidden;
          box-shadow: 0 8px 32px rgba(0,0,0,0.45);
          border: 1px solid rgba(58,134,255,0.12);
        }

        thead {
          background: linear-gradient(135deg, #e63946, #1e3a8a, #3a86ff);
        }

        thead th {
          padding: 1rem 1.5rem;
          text-align: left;
          font-family: 'Outfit', sans-serif;
          font-weight: 700;
          text-transform: uppercase;
          letter-spacing: 1px;
          font-size: 0.85rem;
          color: #fff;
        }

        tbody td {
          padding: 1rem 1.5rem;
          border-bottom: 1px solid rgba(255,255,255,0.08);
          font-size: 0.95rem;
        }

        tbody tr:last-child td { border-bottom: none; }
        tbody tr:nth-child(even) { background: rgba(255,255,255,0.03); }
        tbody tr:hover { background: rgba(58,134,255,0.08); }

        /* price column in electric blue */
        tbody td:last-child {
          color: #4facfe;
          font-weight: 700;
          text-shadow: 0 0 8px rgba(79, 172, 254, 0.3);
        }

        /* back button */
        .back-link {
          display: inline-block;
          margin-top: 2.5rem;
          padding: 0.8rem 2rem;
          font-family: 'Outfit', sans-serif;
          font-size: 0.95rem;
          font-weight: 700;
          text-transform: uppercase;
          letter-spacing: 1px;
          color: #e63946;
          border: 2px solid #e63946;
          border-radius: 12px;
          text-decoration: none;
          transition: all 0.3s ease;
        }

        .back-link:hover {
          background: #e63946;
          color: #fff;
        }

        @media (max-width: 600px) {
          h1 { font-size: 1.6rem; }
          thead th, tbody td { padding: 0.7rem 0.8rem; font-size: 0.85rem; }
        }
      </style>
    </head>
    <body>

      <h1>Gym <span>Programs</span></h1>
      <p class="subtitle">Browse our complete training programme catalogue.</p>

      <!-- table built from the XML data -->
      <table>
        <thead>
          <tr>
            <th>#</th>
            <th>Program</th>
            <th>Trainer</th>
            <th>Duration</th>
            <th>Price</th>
          </tr>
        </thead>
        <tbody>
          <!-- loop through each program and output a row -->
          <xsl:for-each select="programs/program">
            <tr>
              <td><xsl:value-of select="position()"/></td>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="trainer"/></td>
              <td><xsl:value-of select="duration"/></td>
              <td><xsl:value-of select="price"/></td>
            </tr>
          </xsl:for-each>
        </tbody>
      </table>

      <a href="index.html" class="back-link">&#8592; Back to Home</a>

    </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
