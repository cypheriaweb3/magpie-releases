cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.802"
  sha256 arm:   "256aa61d02c08e1ea1e2087c556ffa872932a491f6700f481b6aea34e955a3ea",
         intel: "6c85cbfaa040820f550aa6690181d20906aae0bebd127f9f6cd4a41b4c2a0112"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
