require 'fileutils'
dest_path = '/tmp/output/pdfs/fullsite-sidebar/'
endpoint = 'https://docs.netapp.com/us-en/occm/pdfs/fullsite-sidebar/Cloud_Manager_documentation.pdf'
ja_path = "#{dest_path}Cloud_Manager_のドキュメント.pdf"
en_path = "#{dest_path}occm.pdf"
%x[ curl -o #{en_path} #{endpoint} ] unless File.exists?("#{en_path}")
FileUtils.mv(en_path.to_s, ja_path.to_s)