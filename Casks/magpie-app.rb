cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.771"
  sha256 arm:   "3d6e8f79ef445ef5c7e49799e75af9b5bf8e2c9046bcbc39e0b7f3f4f9fd4beb",
         intel: "325a622b28e337b3af07a8027c30d42450b7d7a638680908bd88f376ea7ea7c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
