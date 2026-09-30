cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.483"
  sha256 arm:   "360a69128259f9e8ba8beef80538c60a6a4fab9af1040c064e7e3c07365e5a9e",
         intel: "2b0d65abfb49c84a302e0f77cd94747640c972e8fadd72e0dcc52342685d6adf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
