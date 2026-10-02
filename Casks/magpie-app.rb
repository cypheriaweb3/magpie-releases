cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.662"
  sha256 arm:   "0f72d2558343018b546f9d75159f59f3c5c627bee732b4c0d49c56e273256acb",
         intel: "4c3cb671430ffcde60a1fdc6d06abb6787e6f5d22c5ae4c5b1b9b08e688d5781"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
