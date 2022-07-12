# 类: HttpRequestResult  
  
**继承自:** CoreAPI  
  
RainyBot的Http请求结果类，可从其中快速获取某次Http请求的结果数据  
  
# 方法 
  
- **get_request_url()**  
  
获取此请求的URL字符串  
  
---  
  
- **get_request_data()**  
  
获取此请求的请求数据字符串  
  
---  
  
- **get_request_data_dic()**  
  
将此请求的请求数据解析为字典并返回  
  
---  
  
- **get_request_headers()**  
  
获取此请求的headers数组  
  
---  
  
- **get_result_status()**  
  
获取此请求的结果状态  
  
---  
  
- **get_response_code()**  
  
获取此请求的结果响应码  
  
---  
  
- **get_headers()**  
  
获取此请求的结果的headers  
  
---  
  
- **get_as_text()**  
  
尝试将此请求的结果解析为字符串并返回  
  
---  
  
- **get_as_dic()**  
  
尝试将此请求的结果解析为字典并返回  
  
---  
  
- **get_as_byte()**  
  
直接返回此请求的结果的二进制数据数组  
  
---  
  
- **get_as_image()**  
  
尝试自动判断此请求的结果的图像格式，解析并返回其图像实例，支持的图像格式为: `png,jpg,bmp,tga,webp`   
  
若图像的格式已知，建议使用`get_as_[格式]_image()`系列函数以获得更好的性能 (如[method get_as_png_image]函数)  
  
---  
  
- **get_as_png_image()**  
  
尝试将此请求的结果作为png格式解析并返回其图像实例  
  
---  
  
- **get_as_jpg_image()**  
  
尝试将此请求的结果作为jpg格式解析并返回其图像实例  
  
---  
  
- **get_as_bmp_image()**  
  
尝试将此请求的结果作为bmp格式解析并返回其图像实例  
  
---  
  
- **get_as_tga_image()**  
  
尝试将此请求的结果作为tga格式解析并返回其图像实例  
  
---  
  
- **get_as_webp_image()**  
  
尝试将此请求的结果作为webp格式解析并返回其图像实例  
  
---  
  
- **save_to_file(String path)**  
  
尝试将此请求的结果的二进制数据保存到指定路径的文件  
  
---  
  

