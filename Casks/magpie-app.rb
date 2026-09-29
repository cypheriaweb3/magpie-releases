cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.424"
  sha256 arm:   "fda7d12e6f2bfbedadaab74ef54d2b8f69ff1d9ff22af39d00d22dfb1f5d39be",
         intel: "825fa437920cf5b8068874739b58c8b306770a3ed0caae9e904e314808db93dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
