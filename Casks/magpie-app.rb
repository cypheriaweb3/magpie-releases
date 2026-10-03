cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.790"
  sha256 arm:   "f45883efcabd1dff5da813365476d1c13e5ea3293d58d11960de5ccbb4b8fc03",
         intel: "87d32915556a689493bedafbe946ae930bc0402d93febd1bb847903c4d169666"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
