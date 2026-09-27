cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.180"
  sha256 arm:   "8b429bd61e9b6e6bbc5cb48a3298b6dbb1cd318463c2c1dd5be4909ce02d9662",
         intel: "c8ae8c0167919c9c037c300d6ef38c92f050570c957a057d61c20e89746caf2a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
