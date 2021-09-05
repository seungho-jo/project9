<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="file.*"
    import="java.io.File"
    import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"
    import="com.oreilly.servlet.MultipartRequest"
    %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
</head>
<body>
	<%
		String directory = application.getRealPath("/upload/");
		int maxSize = 1024 * 1024 *100;
		String encoding = "UTF-8";
		
		MultipartRequest multipartRequest
		= new MultipartRequest(request, directory, maxSize, encoding,
				new DefaultFileRenamePolicy());
		
		String fileName = multipartRequest.getOriginalFileName("file");
		String fileRealName = multipartRequest.getFilesystemName("file");
		
		if(!fileName.endsWith(".doc") && !fileName.endsWith(".pdf") &&
				!fileName.endsWith(".jpg") && !fileName.endsWith(".xls") &&
				!fileName.endsWith(".png")) {
			File file = new File(directory + fileRealName);
			file.delete();
			out.write("업로드할 수 없는 확장자입니다.");
		} else {
			new FileDAO().upload(fileName, fileRealName);
			out.write("파일명: "+ fileName+"<br>");
			out.write("실제파일명: "+ fileRealName+"<br>");
		}

	%>
</body>
</html>