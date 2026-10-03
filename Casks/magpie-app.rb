cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.731"
  sha256 arm:   "0d16d7d5bcf5b374b107ce18e35abe20e5bd8a02b26f02eb81b16e4f35f05dfa",
         intel: "4051ab1f0b99392697ffb6541e5391a9412e48c271383883be89ad06e7262280"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
