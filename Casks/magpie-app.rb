cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.296"
  sha256 arm:   "4a963e146e30052411ed7fc4ee443f5e4717f70f36b3c3836bcc6c234e7c0724",
         intel: "39477a7ef642e4844034a6147fe7042a2cc8601673e3c4b582dc54b31fc2f620"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
