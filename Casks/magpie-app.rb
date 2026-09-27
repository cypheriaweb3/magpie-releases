cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.158"
  sha256 arm:   "0480d808c791bdafac8da239bf62b14b9758183b9dbac208618305f346a760d0",
         intel: "fa4feceb42bd86d3b37d48881af9e8ac345a80d74d828bb86c72c3b1953bfaf6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
