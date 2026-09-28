cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.310"
  sha256 arm:   "39aae20d7ad525e96fc17bfad260edcd8ea926ad5560c8ff382d0a89b084cef8",
         intel: "017d48ade16a7d7f6ebddaa6c57d2c23afcd4c28236fa281b10ec12808d15654"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
