cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.831"
  sha256 arm:   "71e7a90291e1c54dac8232b17f1f96ea859c8fbb99e83721453f0c8d0b3a9b7b",
         intel: "464e64aceb273e1c58f4686d5efc0d73881b3947bf5f17e2da375292b1e77455"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
