cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.337"
  sha256 arm:   "448f4f516d89376ae970c44b3d0abceaabe6b248f6976ae9a318b90e051d091b",
         intel: "e0a8074ad76cba97bf665e5438c6b1b7ae46cb3a210c70209bc8d325400b07e1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
