cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.754"
  sha256 arm:   "b95a7ce5cc752ea5bef4d870df4c4877295fd7445559c45c0272758d8daea9ff",
         intel: "28eb7b5188380b4bc041df2a4db8e4e86443a9b5830568bab2dbf82b1fbc0b5f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
