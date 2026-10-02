cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.651"
  sha256 arm:   "4f6594e4a7a35dc6bbded78bcc8e3f311a4457eea6be856b8d5fcd5a5d053531",
         intel: "9fa0378020676aed293289ed78cc54632aa7cead150a52ff92cc9e22b98c8ead"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
