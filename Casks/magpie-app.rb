cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.184"
  sha256 arm:   "816a2f531bab0d69b3f958a357d609c76078668fb7e8e895a875e38ddf8254fa",
         intel: "fdc820eedc370557bf58860e40b4486de6bb350b4845cb65b69b3162eaedd7c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
