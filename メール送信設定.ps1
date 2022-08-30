####メール送信設定####
# SMTPサーバーのアドレス
$server = "127.0.0.0"
# SMTPポート
$port = "25"
# メール送信設定のオブジェクト作成
$SMTPClient=New-Object Net.Mail.SmtpClient($server,$port)

####メールの内容####
# 送信者
$from = "yamagata@ken.jp"
# 受信者
$to = "yamaguchi@ken.jp"
# 件名
$subject = "送信テスト"
# 本文
$body = "送信テストです。`n確認できましたか？"
# メール内容のオブジェクト作成
$MailMassage=New-Object Net.Mail.MailMessage($from,$to,$subject,$body)

# メール送信
$SMTPClient.Send($MailMassage)