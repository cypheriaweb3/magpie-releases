cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.301"
  sha256 arm:   "a34732e6271cfd8531642912abab0f4fc898e31a351ac6f5bd9c659eb7c9c6c6",
         intel: "f659ae6842182b365f352676d40df2b3d6e62f6306199699f1cefec5cd079027"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
