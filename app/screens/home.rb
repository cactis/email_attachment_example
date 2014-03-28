class HomeScreen < Prime::Screen

  def render
    set_navigation_right_button "Email" do
      send_mail
    end
  end

  def send_mail
    options = {
      subject: '== Email Attachment Test ==',
      message: 'Hi, here is a email attachment test.',
      html: true
    }

    mc = MFMailComposeViewController.alloc.init
    mc.mailComposeDelegate = self
    mc.setSubject options[:subject]
    mc.setMessageBody options[:message], isHTML: true

    path = NSBundle.mainBundle.pathForResource('Default-568h@2x', ofType: 'png')
    attachment = NSData.dataWithContentsOfFile(path)

    mc.addAttachmentData(attachment, mimeType: 'image/png', fileName: 'Default-568h@2x.png')

    self.presentViewController(mc, animated: true, completion: nil)
  end

  def mailComposeController(controller, didFinishWithResult: result, error: error)
    self.dismissModalViewControllerAnimated(@mailer_is_animated)
  end
end
