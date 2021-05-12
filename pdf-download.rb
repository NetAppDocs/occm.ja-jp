dest_path = '/tmp/output/pdfs/fullsite-sidebar/'
endpoint = 'https://docs.netapp.com/us-en/occm/pdfs/fullsite-sidebar/Cloud_Manager_documentation.pdf'
pdf_path = "#{dest_path}Cloud_Manager_のドキュメント.pdf"
%x[ curl -o #{pdf_path} #{endpoint} ] unless File.exists?("#{pdf_path}")