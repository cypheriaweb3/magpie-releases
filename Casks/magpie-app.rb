cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.488"
  sha256 arm:   "029c309bd66f28d94497f7a32f627e05cb85a0867f4bbf13481db8c2f2745a79",
         intel: "5661c43f713636a69b9cdea6109147472778b6bf005c8fa5d422a6cc54e01123"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
