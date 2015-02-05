Pod::Spec.new do |s|
  s.name         = "LicensesKit"
  s.version      = "0.0.5"
  s.summary      = "A simple way to list third-party licenses in your iOS apps"
  s.description  = <<-DESC
                   ###Making giving credit where credit is due much easier than before.

If you've ever worked on an app that uses any third-party libraries (which is everyone), then you probably know that it's courteous (and sometomes mandatory, depending on the library) to add the library's license to an "acknowledgements" page in your app. And those pages are often tedious to put together and, especially, update. With LicensesKit, your troubles are over!

### LicensesKit is Flexible.
A lot of the popular license-diaplaying libraries (namely [VTAcknowledgementsViewController](https://github.com/vtourraine/VTAcknowledgementsViewController) and [TRZSlideLicenseViewController](https://github.com/86/TRZSlideLicenseViewController)) only have support for if all of your libraries are in CocoaPods. While the automation of aggregating all the licenses is nice, it doesn't help if, say, you use [Google's API client](https://code.google.com/p/google-api-objectivec-client/), which if don't want an [outdated pod](https://github.com/CocoaPods/Specs/blob/master/Specs/Google-API-Client/0.1.1/Google-API-Client.podspec.json), you would just use the SVN from the project site. Also, some third-party libraries may be written in Swift (like this one), which is not supported by CocoaPods yet.

With LicensesKit you can just aggregate your libraries in a JSON file you include in your app bundle (learn more about specifics below), or add them in code if you prefer. This abstracts and simplifies things for you as the developer because you do not need to worry about where the library is coming from, all you need is to just list it.
                   DESC
  s.homepage     = "https://github.com/mattwyskiel/LicensesKit"
  s.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
  s.author             = { "Matthew Wyskiel" => "mwyskiel@optonline.net" }
  s.social_media_url   = "http://twitter.com/MattWyskiel"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/mattwyskiel/LicensesKit.git", :tag => "#{s.version}" }
  s.source_files  = "LicensesKit/LicensesViewController.swift", "LicensesKit/NoticesHtmlBuilder.swift", "LicensesKit/Model", "LicensesKit/Model/Licenses"
  s.resource_bundles = {
    'LicensesKit' => ["LicensesKit/Supporting Files/Licenses/*.txt", "LicensesKit/LicensesViewController.xib"]
  }
  s.framework  = "UIKit"
  s.dependency 'StringBuilder', '0.0.1.1'
  s.requires_arc = true

end
