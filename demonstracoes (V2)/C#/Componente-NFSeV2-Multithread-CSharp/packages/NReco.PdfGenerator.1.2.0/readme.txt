NReco.PdfGenerator (wkhtmltopdf wrapper)
----------------------------------------
Website: http://www.nrecosite.com/pdf_generator_net.aspx
API documentation: http://www.nrecosite.com/doc/NReco.PdfGenerator/
Nuget package: https://www.nuget.org/packages/NReco.PdfGenerator/

License
-------
PdfGenerator can be used for FREE in single-deployment projects (websites, intranet/extranet) or applications for company's internal business purposes (redistributed only internally inside the company). 
Commercial license (included into enterprise source code pack) is required for:
1) Applications for external redistribution (ISV)
2) SaaS deployments

How to use
----------
var pdfBytes = (new NReco.PdfGenerator.HtmlToPdfConverter()).GeneratePdf(htmlContent);

More examples are available for commercial users: http://www.nrecosite.com/pdf_generator_net.aspx
