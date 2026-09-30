cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.550"
  sha256 arm:   "d0179ff44f8734f8cb4960be6528794c03b6de02db93a4b5ea3035f1f54df8ce",
         intel: "9b974bc601a0682186b65e41cf2e4b14e8dcc292910f6bc8d2050bab907276f1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
