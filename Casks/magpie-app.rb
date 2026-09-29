cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.402"
  sha256 arm:   "d418498439ae247833172238a2f0179d0a3b185250779d54de2910cedf2d577c",
         intel: "d702ae52b0f3515ea1bbeb7f9ea6e7981bb7d2d6a59eb72db8e86666a0b4e407"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
