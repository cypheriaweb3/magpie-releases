cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.748"
  sha256 arm:   "af01227bbcacecd39aad8b60ad8a11c874f91005c2933638dd5678ca59b1f6a4",
         intel: "1b3f2085be4270edcd071e0dd2402f13768794221a52b5a8f62c5f26d0d6e276"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
