# RedistOnly
#
# Enabling this policy defines a semicolon-delimited list of file extensions which will be allowed to have rich attachment previews.
# 
# When this policy is disabled or not configured the default settings will be set to .bmp;.emf;.gif;.jpg;.jpeg;.png;.wmf;.wrn;.txt;.err;.xml;.cpp;.c;.h;.cxx;.hxx;.idl;.cs;.vb;.idl;.xsd;.doc;.docx;.xls;.xlsx;.ppt;.pptx;.vsd;.xlsb;.xltx;.dot;.rtf
Control rich previews for attachments:
  lgpo.set:
  - name: RichAttachmentPreviews
  - setting:
      RichAttachmentPreviews: text-placeholder
  - policy_class: Machine
