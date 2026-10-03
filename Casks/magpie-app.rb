cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.765"
  sha256 arm:   "d1bd6a4ad141301f1964efd0887d92fe2b22c776f78af6c0c06009ec20f81232",
         intel: "e10df2eb80e3c7dbc5cc8f4f4b5c4dc4e1030d7f9676f89ff7178a1a1c32b388"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
