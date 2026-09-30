cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.477"
  sha256 arm:   "f1421ae32a3258568090ecceaf827934b6912e046c3389f68261f3e1198f8b9b",
         intel: "36b77844e16ae32577c990cb10b78539e775c6af793a65bf5df4cea311dcc5fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
