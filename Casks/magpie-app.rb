cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.684"
  sha256 arm:   "abc33afbccab281e38ca3c330ca9ccbc3f512aefbdf627567d90ea326c381e35",
         intel: "fdda7e1cdac64239f31f5dd5e313e46ccc79138ad26631ab9adf165b83b9fb88"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
