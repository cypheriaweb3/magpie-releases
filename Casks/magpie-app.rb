cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.781"
  sha256 arm:   "172281596ba6503c81d6c230ebb5ffe3147f46b92f7a7f4050c72425b4d8ea64",
         intel: "f286d895c1ac589d97bd6cf01414d313f5618d09e1c277ca3dff3f103f8b5133"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
