cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.812"
  sha256 arm:   "de1186fbbe84e202916e74fbb9835d72fa79bdf851da99fa851b9051fc6142d7",
         intel: "527a71929d469c56e103cc96fd6646221036d4bb19cf2e9b63492305c88e79d8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
