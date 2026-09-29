cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.369"
  sha256 arm:   "8548a6a3d4b614b3006f4950877a808680fad8751981b0129ccc2a6d66a6b3cf",
         intel: "2071a5e85a85ea6d2539c95f2cd06911fd91650661cc840fac8c246db54ed8f3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
