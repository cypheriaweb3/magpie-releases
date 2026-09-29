cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.400"
  sha256 arm:   "cd1fe67ebc862ad6c3e0a940e9c210da29cea89b50e298e85497fd2e8b6ed52e",
         intel: "dafe54c10adce9328d84911b053344705c5954451ac4d536721f516fb87e22ab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
