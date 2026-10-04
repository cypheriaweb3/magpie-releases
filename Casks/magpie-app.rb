cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.877"
  sha256 arm:   "6ebb533e6c605266377cbe16b2ac111037548dbc50b468169510daadacea5791",
         intel: "9505faccb25bea012b76d4d9fa200f30511a22007dccfbddcb88f0383877f745"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
