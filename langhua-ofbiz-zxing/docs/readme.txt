1. Deploy this zxing to hot-deploy.

2. Build and restart OFBiz.

3. Visit http://localhost:8080/zxing/control/qrcode?message=%E4%BD%A0%E5%A5%BD%EF%BC%8C%E6%B5%8B%E8%AF%95%E4%B8%80%E4%B8%8BQRCode&format=jpg&width=400&height=400

4. The qrcode request calls generateQRCodeImage service:
            Map<String, Object> results = dispatcher.runSync("generateQRCodeImage", context);
            if (!ServiceUtil.isError(results)) {
                BufferedImage bufferedImage = (BufferedImage) results.get("bufferedImage");
                if (!ImageIO.write(bufferedImage, format, os)) {
                    String errMsg = UtilProperties.getMessage(
    						"ZXingUiLabels",
    						"ErrorWriteFormatToFile",
    						new Object[] { format }, locale);
                    request.setAttribute("_ERROR_MESSAGE_", errMsg);
                    return "error";
                }
                os.flush();
            } else {
                String errMsg = ServiceUtil.getErrorMessage(results);
                request.setAttribute("_ERROR_MESSAGE_", errMsg);
                return "error";
            }

5. Note: when deploying, all the formats must be tested.

6. Note: when deploying, you should consider whether to disable the qrcode request.
