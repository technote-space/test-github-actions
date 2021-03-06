module.exports = {
    verbose: true,
    testRegex: 'resources/js/__tests__/.*\.js$',
    transform: {
        '^.+\\.js$': '<rootDir>/node_modules/babel-jest',
    },
    moduleFileExtensions: ['js'],
    coverageDirectory: '<rootDir>/coverage/js',
};
