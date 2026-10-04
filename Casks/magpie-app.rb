cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.800"
  sha256 arm:   "dca9db68ead77a84b550dc6c3896249383b0ed80e2b1f63ad300d90a4968d76b",
         intel: "51a0aef6d6ae2d25eb313d8680edb3b64d385aeb1128629e3a6ef90622e3825b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
