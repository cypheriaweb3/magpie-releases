cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.810"
  sha256 arm:   "fd4b67ccb44107a2092a2aa3c185fa8de7a54966ab06612eeff2cba3aac1ee9c",
         intel: "e80fa57a59cd304850a292422a054a461b5847b4822ba4984e984c4bffc8ec78"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
