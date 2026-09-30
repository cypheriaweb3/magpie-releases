cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.529"
  sha256 arm:   "113975dda181ce599e904478feb9aa99987b9381b34019d16751443abbb5c553",
         intel: "2d8e914159ebff61febf2c499ce5abcd40fecf0661dfd8682ae3980a2403accb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
