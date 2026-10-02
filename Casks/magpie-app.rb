cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.637"
  sha256 arm:   "b5f77f7b16b92984294b366390fc0280c688c829b615291bfc427d74e2a08abf",
         intel: "ac250d34a559a850db4763e9a532be5fe681eb76ae31905437effde97ec08b82"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
